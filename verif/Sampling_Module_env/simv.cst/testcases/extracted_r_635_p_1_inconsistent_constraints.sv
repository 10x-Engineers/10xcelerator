class c_635_1;
    integer i = 635;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_635_1;
    c_635_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx011x1zx0x1x0001zzxxzxzxzx00zzzzzzzxzxxxzzxxxxxzzxxxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
