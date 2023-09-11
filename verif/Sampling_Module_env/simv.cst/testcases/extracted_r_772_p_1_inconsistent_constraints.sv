class c_772_1;
    integer i = 772;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_772_1;
    c_772_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzxzzx10z0zzz11zx0x101z0001xz1zxzxxxzzxxzxxxzzzxzzxxxzzxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
