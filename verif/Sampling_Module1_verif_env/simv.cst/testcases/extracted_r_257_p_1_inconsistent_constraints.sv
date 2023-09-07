class c_257_1;
    integer i = 257;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_257_1;
    c_257_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01xxz001001101z01x1zxzz0z0z001zzzxzzxxzxxxxzzzzxzxzzxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
