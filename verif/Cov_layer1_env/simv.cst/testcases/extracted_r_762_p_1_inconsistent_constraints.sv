class c_762_1;
    integer i = -760;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_762_1;
    c_762_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1xz0z0z001zz10z110xz0z00z000x1xxxxxxzzxxxzzxzzzxzxxxxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
