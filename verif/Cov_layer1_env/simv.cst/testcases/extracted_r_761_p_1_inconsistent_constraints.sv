class c_761_1;
    integer i = -759;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_761_1;
    c_761_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz1xxxx11zzz0010x1zxxx11000x10zzzzxxxxzxzxzxzxxxzzxxxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
