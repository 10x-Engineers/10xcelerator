class c_266_1;
    integer i = -264;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_266_1;
    c_266_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz0zzz00zx10xz1xx00101z1zx0zz00zxzzxxzzzxxzxzxzxzzzzxxxxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
