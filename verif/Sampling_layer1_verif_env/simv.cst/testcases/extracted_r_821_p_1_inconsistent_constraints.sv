class c_821_1;
    integer i = -135;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_821_1;
    c_821_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x01x1zz001zz00xzxz0x1z0zz0xzx1xzxxxzzzzzzxxxzzzzxzxxzzzzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
