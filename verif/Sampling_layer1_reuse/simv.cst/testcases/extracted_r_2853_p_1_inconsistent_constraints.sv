class c_2853_1;
    integer i = -474;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2853_1;
    c_2853_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z10zz1zxzxxx10011x1010z1x1z0xzzzxxxzzxzzzxxzxzxxxxxxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
