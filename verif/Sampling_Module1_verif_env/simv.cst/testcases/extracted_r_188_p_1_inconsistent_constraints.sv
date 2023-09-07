class c_188_1;
    integer i = 188;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_188_1;
    c_188_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0011x01zz1xx0xxzzxxx1x00xx1xxxxxxxxxzzxzzzzzxxzxzzxzzzxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
