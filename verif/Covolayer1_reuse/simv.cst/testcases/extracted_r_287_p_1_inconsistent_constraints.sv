class c_287_1;
    integer i = -285;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_287_1;
    c_287_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x110z1z011zz101x0z001zzzxzx11z0xzxxxzxxzzzzzxxxxxxzzzzxzzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
