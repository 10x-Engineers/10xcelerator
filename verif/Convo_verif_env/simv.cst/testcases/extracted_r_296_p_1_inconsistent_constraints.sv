class c_296_1;
    integer i = 296;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_296_1;
    c_296_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111zzzzxzzx011z0zz10xx111z10101xzxxzxzzzxzzzxzxzxzxzzzxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
