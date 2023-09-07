class c_725_1;
    integer i = -723;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_725_1;
    c_725_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x110x0zx001x0zxxx001x110z0zzxzzxxzxzxzxxxzxzxxzzxxzxzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
