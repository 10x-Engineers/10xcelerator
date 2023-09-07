class c_663_1;
    integer i = -661;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_663_1;
    c_663_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1000zxzxz1x0x1xxzzxzzzx0xzx1111xzxxzxzzzxzxxzxzxxxzxxxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
