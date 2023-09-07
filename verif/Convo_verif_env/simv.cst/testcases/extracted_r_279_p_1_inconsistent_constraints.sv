class c_279_1;
    integer i = 279;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_279_1;
    c_279_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x011x0000x100zz0zzzzxx11x1z1zzxxzxzzzxzzzzxxxzxxzzxxzxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
