class c_545_1;
    integer i = 545;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_545_1;
    c_545_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx00x11zxz1x10111z001x11z0zzz1zzxzxzzzzxxxzzzxzxxxxxxxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
