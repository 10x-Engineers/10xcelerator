class c_640_1;
    integer i = -638;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_640_1;
    c_640_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xxz000x1zz0001zx011xxxx1111x0xzzzxxzzzxxxzxzzxxzzxxxxxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
