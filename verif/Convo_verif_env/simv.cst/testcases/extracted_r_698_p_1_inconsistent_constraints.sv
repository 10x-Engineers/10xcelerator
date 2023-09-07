class c_698_1;
    integer i = 698;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_698_1;
    c_698_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000101x1001z00xzxx001z1xz00x0z1xzzxzzzzzzzzxxxzzzxxxzxxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
