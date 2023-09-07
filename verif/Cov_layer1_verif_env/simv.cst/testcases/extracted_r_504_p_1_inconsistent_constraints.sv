class c_504_1;
    integer i = -502;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_504_1;
    c_504_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0z1xzx1zxzxxzx0x0zxx00x1z110xxzzzxzxxxzxzzzxzzxzzxxxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
