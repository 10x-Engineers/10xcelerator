class c_604_1;
    integer i = 604;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_604_1;
    c_604_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz01zxxx00zzxz11xx0000zx0zzx00x1zzzzzxxxzzxzzxxxxxxxxzxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
