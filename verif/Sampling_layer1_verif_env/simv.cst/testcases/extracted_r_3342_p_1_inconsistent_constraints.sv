class c_3342_1;
    integer i = -555;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3342_1;
    c_3342_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zxz001zzxxzxxzz00x11zxx0x1z0xxxxxzxzzzxxxxzxxxzxzxxxxxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
