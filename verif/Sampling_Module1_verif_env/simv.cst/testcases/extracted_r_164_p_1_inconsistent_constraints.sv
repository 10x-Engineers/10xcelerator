class c_164_1;
    integer i = 164;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_164_1;
    c_164_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz0zxzxzx1x0zzx1xz110x0x00110xxxzxzzzxzzxxxzzzxzxzzzzxzxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
