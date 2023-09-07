class c_82_1;
    integer i = 82;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_82_1;
    c_82_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxz01xz11xzx1z1zxx01zz0000x11zzzzxzzxzxxzzzxxxzzxzzxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
