class c_327_1;
    integer i = -325;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_327_1;
    c_327_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0x10xx100100x0010z1zxz011zz001xxxzzxxzxzzzzzzzxzzzzxxzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
