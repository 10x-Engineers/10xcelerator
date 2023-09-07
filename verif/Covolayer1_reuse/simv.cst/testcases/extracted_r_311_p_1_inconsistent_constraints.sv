class c_311_1;
    integer i = -309;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_311_1;
    c_311_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x00zzz0xzxx110x1z0x011z00xx1zxxzzzxxzzzzxxxxxxzxxzxzxzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
