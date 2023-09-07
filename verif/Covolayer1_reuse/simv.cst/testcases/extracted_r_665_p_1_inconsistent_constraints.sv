class c_665_1;
    integer i = -663;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_665_1;
    c_665_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxz0zxxxzzx0xz0x000xxz1x00xxz0zzzxxzxxzxzxxxxxxzzxzzzxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
