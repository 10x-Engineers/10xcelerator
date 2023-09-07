class c_631_1;
    integer i = 631;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_631_1;
    c_631_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zx110001zz0xxx0xz1xz01xz01zzxxxxxzzzzxzzxxxxzzxxxzxzzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
