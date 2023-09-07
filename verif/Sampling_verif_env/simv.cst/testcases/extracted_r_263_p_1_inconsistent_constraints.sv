class c_263_1;
    integer i = 263;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_263_1;
    c_263_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zx11zz1z0001z1x1zz0zx00xxxxzx0xxzzzzzzxzxzxzxxxzxzxzzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
