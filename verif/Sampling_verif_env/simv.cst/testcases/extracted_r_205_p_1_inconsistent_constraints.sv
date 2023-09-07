class c_205_1;
    integer i = 205;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_205_1;
    c_205_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzxx1zzx1z01zzxzzz0x0zzxxxzxx00xxxxxxzzzxzxxxxxzzxxxzzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
