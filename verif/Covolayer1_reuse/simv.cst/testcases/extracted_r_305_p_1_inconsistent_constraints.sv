class c_305_1;
    integer i = -303;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_305_1;
    c_305_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110z1x0z000zzzzz00z1x000x10zzxzzzzzxzzxxxxxzzxxxxzzxxxzzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
