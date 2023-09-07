class c_179_1;
    integer i = -177;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_179_1;
    c_179_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz1xx10z000z1zxxz1x11xz1zzxx11zzzxzxzzzxzzxxzxzxzxzxzzzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
