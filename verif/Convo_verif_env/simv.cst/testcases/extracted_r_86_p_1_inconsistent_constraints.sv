class c_86_1;
    integer i = 86;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_86_1;
    c_86_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00x0zx1x00zx0zxx11xxzzxzz0z10zxxzxxzxzxxxxzzzzzzxxxzxxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
