class c_495_1;
    integer i = -493;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_495_1;
    c_495_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x010xxx00xz10zz1x10x1xz0110x000xxzzxzxxxxxzzzzzzxxzzzxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
