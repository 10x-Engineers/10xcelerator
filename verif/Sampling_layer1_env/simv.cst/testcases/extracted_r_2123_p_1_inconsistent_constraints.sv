class c_2123_1;
    integer i = -352;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2123_1;
    c_2123_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx0x0zxz110z01x10x011z1x1111xzzxxxxzxxxzzzzxxxxxzxxzxxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
