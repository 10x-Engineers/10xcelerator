class c_484_1;
    integer i = -482;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_484_1;
    c_484_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxxz00zzx1z0111xzzxxz0zzx100zx1zzxzxxxxzzxzzxxxxxxzzzzzzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
