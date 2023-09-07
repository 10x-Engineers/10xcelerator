class c_584_1;
    integer i = -96;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_584_1;
    c_584_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111101z11x00z0z011zx1z1zxx0z0x1xxzzxzzzxxzxzxzxxxxxzxzxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram