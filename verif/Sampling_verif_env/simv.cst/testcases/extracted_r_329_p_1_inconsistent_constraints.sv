class c_329_1;
    integer i = 329;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_329_1;
    c_329_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xz010zz101x1xx0xxx01101zzx1x01zxxzzxxzxzzzxxxzzzzxxzzxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
