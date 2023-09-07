class c_500_1;
    integer i = -498;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_500_1;
    c_500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx00100xz1xxzxz0xxzxz001z0x1xzxzxzxzxxzzzxzxxxxxxxxxzxzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
