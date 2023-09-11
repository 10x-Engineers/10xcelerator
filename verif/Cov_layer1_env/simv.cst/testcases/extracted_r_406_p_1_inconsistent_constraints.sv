class c_406_1;
    integer i = -404;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_406_1;
    c_406_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx0z1x100xx0000zzxx111xz0z00zxzzxxxxzzxxzzxzxzzzzxxxzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
