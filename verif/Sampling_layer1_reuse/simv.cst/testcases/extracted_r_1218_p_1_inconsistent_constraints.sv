class c_1218_1;
    integer i = -201;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1218_1;
    c_1218_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110zz1zxz110zxx10zz0000z0z00x1zzxxxzxxxxzzxzzxzzzzzxxxzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
