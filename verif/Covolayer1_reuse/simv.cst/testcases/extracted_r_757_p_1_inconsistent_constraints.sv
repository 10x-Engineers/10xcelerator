class c_757_1;
    integer i = -755;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_757_1;
    c_757_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z1zxzxxx11z0z1x110xx1z1zz01x0zzxzxzxzzzxzxzxzxzxxzzxxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
