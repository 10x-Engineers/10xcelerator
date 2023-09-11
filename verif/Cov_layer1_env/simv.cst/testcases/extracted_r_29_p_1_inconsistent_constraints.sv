class c_29_1;
    integer i = -27;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_29_1;
    c_29_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1x0xxzzx011z0z01xz1z10x0111xxxxxxxzzzxxzxzzxzxzxzzzzxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
