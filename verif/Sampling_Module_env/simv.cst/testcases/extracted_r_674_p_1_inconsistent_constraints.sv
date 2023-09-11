class c_674_1;
    integer i = 674;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_674_1;
    c_674_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z00xzx0zxx1xz0xx0zzxx10xx1101x0zxzxzzzxxxxxxxxxzzxzzzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
