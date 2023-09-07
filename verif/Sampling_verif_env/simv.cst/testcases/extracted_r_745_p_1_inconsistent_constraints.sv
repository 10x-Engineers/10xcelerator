class c_745_1;
    integer i = 745;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_745_1;
    c_745_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1zx110111z0xz1x1xxzz111x1111xzzxxxxxzzzxzzxxxxzzxxxzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
