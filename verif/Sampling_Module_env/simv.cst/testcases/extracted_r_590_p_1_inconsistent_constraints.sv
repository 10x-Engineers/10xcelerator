class c_590_1;
    integer i = 590;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_590_1;
    c_590_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzxx01zzx0z1z0z111xx010z001xx10zxzzzxxzxxxxxzxxzxzxxxzzxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
