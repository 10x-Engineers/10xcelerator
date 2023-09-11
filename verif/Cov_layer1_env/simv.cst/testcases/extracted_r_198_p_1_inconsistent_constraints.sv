class c_198_1;
    integer i = -196;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_198_1;
    c_198_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx10z1010x1z00z1zzx1x111zxxz00xxzzzxzzzzzzzzzzxxxxzxxzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
