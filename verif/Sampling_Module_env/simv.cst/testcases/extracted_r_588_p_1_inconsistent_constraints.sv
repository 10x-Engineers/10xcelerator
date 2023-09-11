class c_588_1;
    integer i = 588;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_588_1;
    c_588_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxz1zxx11xxxz1x1z1xz1xz0zzx1zzxzxxzxxzxzxxxzzxxzzxxzxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
