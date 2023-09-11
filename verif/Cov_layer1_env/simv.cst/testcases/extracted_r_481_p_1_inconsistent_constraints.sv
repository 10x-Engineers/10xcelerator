class c_481_1;
    integer i = -479;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_481_1;
    c_481_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxxzz0z010xz1000x1x1z0110z110zzxxzxzzzzxzxzzzzzzzzzzxxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
