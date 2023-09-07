class c_194_1;
    integer i = -192;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_194_1;
    c_194_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xz010xx01zxx101x1x100xxzzzzxxzxxxzzzxzxzxxzzzxzxxzxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
