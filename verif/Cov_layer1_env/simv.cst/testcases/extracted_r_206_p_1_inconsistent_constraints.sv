class c_206_1;
    integer i = -204;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_206_1;
    c_206_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx0z1zzz111xzzx1010xz101zz1z00zzxzzxzxxxzzzzzzzxxzxxxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
