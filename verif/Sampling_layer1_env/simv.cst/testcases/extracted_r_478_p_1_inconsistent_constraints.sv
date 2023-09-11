class c_478_1;
    integer i = -78;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_478_1;
    c_478_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz1010zxzzxzz1110z000001z0z1xxzzxzzxxzzzzxzxzxxxxxxzxzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
