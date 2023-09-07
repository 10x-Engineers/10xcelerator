class c_462_1;
    integer i = 462;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_462_1;
    c_462_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z10xxxz0z1z1z111zx11z1100zx1zzzzxzxzxzxzxzxxxxzxzxxzzxxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
