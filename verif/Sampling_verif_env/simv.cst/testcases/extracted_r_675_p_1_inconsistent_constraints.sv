class c_675_1;
    integer i = 675;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_675_1;
    c_675_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz1zxx1zz1011x00zzxx000011xx01xzzzzxzxxzxzzzzxxzxzxzzxxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
