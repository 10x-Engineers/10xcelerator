class c_324_1;
    integer i = -322;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_324_1;
    c_324_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010z0zzzxzz1x0z001x001z00x10100xxzxxzzzzzxzzxzxxxzzzxzzzxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
