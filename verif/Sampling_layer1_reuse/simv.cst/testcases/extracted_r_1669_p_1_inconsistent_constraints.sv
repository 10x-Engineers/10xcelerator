class c_1669_1;
    integer i = -277;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1669_1;
    c_1669_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x11xzxz1z00xz11x110x1xz1xx110z0xzxzzxzzzxxzxzzzzxxzxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
