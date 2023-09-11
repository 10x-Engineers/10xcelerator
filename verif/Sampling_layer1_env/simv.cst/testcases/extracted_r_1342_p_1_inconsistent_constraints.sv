class c_1342_1;
    integer i = -222;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1342_1;
    c_1342_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0zz0zxx10zx1x0x10x0xx0zxzz00zzxzxzzzzxxxzzzzxzzzzzzzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
