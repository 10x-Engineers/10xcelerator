class c_759_1;
    integer i = 759;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_759_1;
    c_759_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10xx01x0zzx10xz11z10z1z01x11z1xxxxxxxxzxzzxxxzzxxzzzzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
