class c_3352_1;
    integer i = -557;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3352_1;
    c_3352_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxz001z11x1zz10zxz0zxz11z0x0zzzzxzxzzzxzzzxzzzzzxxxzxxxzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
