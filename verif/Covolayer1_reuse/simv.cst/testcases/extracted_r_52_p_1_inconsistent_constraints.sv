class c_52_1;
    integer i = -50;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_52_1;
    c_52_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz11xzz1zxxzz1z01xzx10101x0z00xxzzxzzzzxzzxzxzzzzxzxxzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
