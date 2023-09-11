class c_3104_1;
    integer i = -516;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3104_1;
    c_3104_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx111x10xz011x1x10x1z00zz0xx10z0xxxxzxxzxzxzxzzzzzxzxzzzxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram