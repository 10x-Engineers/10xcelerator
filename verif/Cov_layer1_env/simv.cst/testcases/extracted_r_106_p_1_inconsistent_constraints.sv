class c_106_1;
    integer i = -104;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_106_1;
    c_106_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xx1xx0z1000100x110zxx00x00x0xzzxxzxzxzxzxxxxxxzzxxzxxzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
