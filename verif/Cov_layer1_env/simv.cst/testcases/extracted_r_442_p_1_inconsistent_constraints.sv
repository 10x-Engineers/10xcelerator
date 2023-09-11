class c_442_1;
    integer i = -440;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_442_1;
    c_442_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz1xz10z1zx10x0zxxxxx0z0z1110xxzxzzxxxxxxxzzzxzxxxzxzzxzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
