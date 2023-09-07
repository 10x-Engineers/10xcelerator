class c_2584_1;
    integer i = -429;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2584_1;
    c_2584_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0101x1zxz1z10zxzx100x11zxxx0x0z0xxxzzxzxzxxzxxxzzxzzzzxzxzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
